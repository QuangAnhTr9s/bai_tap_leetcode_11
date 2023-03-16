// https://leetcode.com/problems/sort-array-by-parity-ii/description/
void main() {
  List<int> nums = [4, 2, 5, 7];
  print(sortArrayByParityII(nums));
}

List<int> sortArrayByParityII(List<int> nums) {
//tạo list chứa số chẵn
//tạo list chứa số lẻ
//kết quả = đan 2 list lần lượt vào nhau
  List<int> listChan = [];
  List<int> listLe = [];
  List<int> result = [];
  for (var element in nums) {
    element % 2 == 0 ? listChan.add(element) : listLe.add(element);
  }
  for (int i = 0; i < listChan.length; i++) {
    result.add(listChan[i]);
    result.add(listLe[i]);
  }
  return result;
}
