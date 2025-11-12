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
  postitionPac="${mapBuild[16]}"

  for ((i = 0; i < 25; i++)); do 
    echo "${mapBuild[i]}"

  done
  return postitionPac


}

moveUp(){
  if [[mapBuild[i] != wall1 && mapbuild[i] != wall2]]; then
    posY += 1;

}

moveLeft(){
  if [[mapBuild[i] != wall1 && mapbuild[i] != wall2]]; then
    posX -= 1;

}

moveRight(){
  if [[mapBuild[i] != wall1 && mapbuild[i] != wall2]]; then
  posX += 1;

}

moveDown(){
  if [[mapBuild[i] != wall1 && mapbuild[i] != wall2]]; then
  posY -= 1;

}

buildMap

arrowUp(){
  if [[shiftUP]]; then
  moveUp

}

arrowLeft(){
  if [[shiftLeft]]; then
    moveLeft

}

arrowRight(){
  if [[shiftRight]]; then
    moveRight

}

arrowDown(){
  if [[shiftDown]]; then
    moveDown

}
playGame(){

 if [[shiftUP]]; then
    arrowUp
    newPac=$buildMap

  elif [[shiftLeft]]; then
    arrowLeft
    buildMap

  elif [[shiftDown]]; then
    arrowDown
    buildMap

  elif [[shiftRight]]; then
    arrowRight
    buildMap


}
