// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
void main() {
  List<int> prices = [7,1,5,3,6,4];
  print(maxProfit(prices));
}

int maxProfit(List<int> prices) {
  //tạo biến để check ngày mua
  int mua = prices.first;
  //tạo biến lợi nhuận
  int profit = 0;
  for (int i = 1; i < prices.length; i++) {
    //tạo biến khoảng cách
    int distance = prices[i]-mua;
    if(prices[i]>mua){
      //nếu giá ngày i > giá mua
      //lợi nhuận = khoảng cách nếu ta tìm được khoảng cách lớn hơn lợi nhuận cũ
      //nếu không thì giữ nguyên
      if(distance>profit) profit = distance;
      // profit = distance > profit ? distance: profit;
    }else{
      //nếu giá ngày i <= giá mua thì gán lại giá cho ngày mua
      mua = prices[i];
    }
  }
  return profit;
}
