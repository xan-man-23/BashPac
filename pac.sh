normalPac="C"
eatingPac="c"
wall1="|"
wall2="-"
afterEat=" "
food="*"
up=""
down=""
left=""
right=""
points=0
backwardsNormalPac="Ↄ"
backwardsEatingPac="ↄ"
ghost1="G"
ghost2="G"
ghost3="G"
ghost4="G"
shiftUP= "A"
shiftDown="B"
shiftLeft="D"
shiftRight="C"
yes="Yes"
no="No"
quit="Q"

mapBuild=("-------------------------------------------------------"
          "| * * * * * * * * * * * * * | * * * * * * * * * * * * |"
          "| * ----- * ------------- * | * ----------- * ----- * |"
          "| * |   | * |           | * | * |         | * |   | * |"
          "| * ----- * ------------- * * * ----------- * ----- * |"
          "| * * * * * * * * * * * * * | * * * * * * * * * * * * |"
          "|-------- * |------------ * | * ------------| * ------|"
          "|       | * | * * * * * * * | * * * * * * * | * |     |"
          "|-------- * | * ------------|------------ * | * ------|"
          "          * * * * * * * * * * * * * * * * * * *        "
          "|-------- * | * |--------       --------| * | * ------|"
          "|       | * | * |                       | * | * |     |"
          "|-------- * | * |-----------------------| * | * ------|"
          "| * * * * * * * * * * * * * * * * * * * * * * * * * * |"
          "| * ----- * | * ------------|------------ * | * --- * |"
          "| * * * * * | * * * * * * * C * * * * * * * | * * * * |"
          "| * ----- * |------------ * | * ------------| * --- * |"
          "| * |   | * | * * * * * * * | * * * * * * * | * | | * |"
          "| * ----- * | * ------------|------------ * | * --- * |"
          "| * * * * * * * * * * * * * * * * * * * * * * * * * * |"
          "-------------------------------------------------------")


buildMap(){

  for ((i = 0; i < 25; i++)); do 
    echo "${mapBuild[i]}"
  done

}

moveUp(){
  if [[mapBuild[i] != wall1 && mapbuild[i] != wall2]]; then
    posY += 1;
  fi

}

moveLeft(){
  if [[mapBuild[i] != wall1 && mapbuild[i] != wall2]]; then
    posX -= 1;
  fi

}

moveRight(){
  if [[mapBuild[i] != wall1 && mapbuild[i] != wall2]]; then
  posX += 1;
  fi

}

moveDown(){
  if [[mapBuild[i] != wall1 && mapbuild[i] != wall2]]; then
  posY -= 1;
  fi

}


arrowUp(){
  if [[shiftUP]]; then
    moveUp
  fi

}

arrowLeft(){
  if [[shiftLeft]]; then
    moveLeft
  fi

}

arrowRight(){
  if [[shiftRight]]; then
    moveRight
  fi

}

arrowDown(){
  if [[shiftDown]]; then
    moveDown
  fi

}

playGame(){
  echo -n "Start Game? "
  if [[shiftRight]]; then
    buildMap
  fi
}

playGame
