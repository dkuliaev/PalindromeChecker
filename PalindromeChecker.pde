public void setup()
{

  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String letters = new String();
  String bLetters = new String();
  int g = bLetters.length();

  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)) == true)
      letters = letters + word.toLowerCase().charAt(i);
  }

  int h = letters.length() - 1;

  for(int k = h; k >= 0; k--)
  {
    bLetters = bLetters + letters.charAt(k);
  }

 
  if(bLetters.equals(letters))
  {
    return true;
  }
  return false;
}

