// https://leetcode.com/problems/valid-palindrome/description/
void main(){
  String s = "@A man, a plan, a canal: Panama";
  print(isPalindrome(s));
}
bool isPalindrome(String s) {
  //to lowercase
  s = s.toLowerCase();
  // removing all non-alphanumeric characters
  s = s.replaceAll(RegExp('[^a-z0-9]'), '');
  // s = s.replaceAll(RegExp('[^A-Za-z0-9]'), '');
  //reversed
  String s2 = s.split('').reversed.toList().join();

  return s == s2;
}