void main(){
  List<int> nums = [1, 2, 1, 10];
  nums.sort((b, a) => a.compareTo(b));
  print(nums);
  List<int> listCheck = List.from(nums);
  nums.removeLast();
  print(nums);
  print(listCheck);
}