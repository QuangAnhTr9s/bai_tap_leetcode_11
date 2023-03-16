void main() {
  int numBottles = 15, numExchange = 4;
  print(numWaterBottles(numBottles, numExchange));
}

int numWaterBottles(int numBottles, int numExchange) {
  //biến số chai rỗng dư
  int numEmpty = 0;
  //tổng số chai có thể uống
  int sum = 0;
  //vòng lặp tiếp tục cho đến khi
  //số chai rỗng (numBottles(sau khi uống nó sẽ là chai rỗng) + numEmpty) < numExchange
  while (numBottles + numEmpty >= numExchange) {
    //sau khi uống => cập nhật tổng số chai đã uống và số chai rỗng
    sum += numBottles;
    numEmpty = numBottles + numEmpty;
    //sau mỗi lần đi đổi thì numBottles là:
    numBottles = numEmpty ~/ numExchange;
    //chai rỗng còn dư sau khi đi đổi:
    numEmpty = numEmpty % numExchange;
  }
  return sum + numBottles; //tổng số chai + số chai lần cuối đi đổi được
}
