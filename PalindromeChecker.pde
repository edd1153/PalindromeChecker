public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

//Returns true if string is a palindrone, false if not
public boolean palindrome(String word)
{
  String justLettersForWord = onlyLetters(word);
  justLettersForWord = noCapitals(justLettersForWord);
  String justLettersForReversedWord = reverse(word);
  justLettersForReversedWord = onlyLetters(justLettersForReversedWord);
  justLettersForReversedWord = noCapitals(justLettersForReversedWord);
  if (word.length() == 0){
    return false;
  }
  if (justLettersForWord.equals(justLettersForReversedWord)){
    return true;
  }
  return false;
}

//Takes in a string and returns the string in reverse
public String reverse(String str)
{
    String sNew = new String();
    for (int i = 0; i < str.length(); i++){
      String part = str.substring(i , i + 1);
      sNew = part + sNew;
    }
    return sNew;
}

//Takes in a string and returns a string with only letters
public String onlyLetters(String sString){
  String letters = "";
  for (int i = 0; i < sString.length(); i++){
    if (Character.isLetter(sString.charAt(i)) == true){
      letters = letters + sString.charAt(i);
    }
  }
  return letters;
}

//Takes in a string and returns a string without capital letters
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
