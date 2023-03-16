// https://leetcode.com/problems/largest-perimeter-triangle/description/
void main() {
  List<int> nums =[26,46,88,38,22,2,31,11,36,18,123];
  print(largestPerimeter(nums));
}

int largestPerimeter(List<int> nums) {
  //chu vi = tổng 3 cạnh
  // => chu vi max <=> 3 cạnh max
  nums.sort((b, a) => a.compareTo(b));
  //lấy 3 cạnh
  for (int i = 0; i < nums.length - 2; i++) {
    if(nums[i] < nums[i+1] + nums[i+2]){
      //nums[i] < nums[i+1] + nums[i+2]: điều kiện để tam giác có diện tích >0
      //do đã sắp xếp các cạnh từ nhỏ đến bé nên chu vi tìm được lần đầu tiên sẽ là chu vi lớn nhất có thể
       return nums[i] + nums[i+1] + nums[i+2];

    }
  }
  return 0;
}
