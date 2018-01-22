String alphabet = new String("abcdefghijklmnopqrstuvwxyz");
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
  if (origin(word).equalsIgnoreCase(reverse(word)))
    return true;
  else 
    return false;
}

public boolean isLetter(String word)
{
  for (int i = 0; i<alphabet.length(); i++)
  {
    if (word.equalsIgnoreCase(alphabet.substring(i,i+1))==true)
      return true;
  }
  return false;
}

public String origin(String str)
{
  String original = new String();
  for (int k = 0; k<str.length(); k++)
  {
    if (isLetter(str.substring(k,k+1))==true)
      original = original + str.substring(k,k+1);
  }
  //System.out.println(original);
  return original;
}

public String reverse(String str)
{
  String flip = new String();
  String original = new String();
  for (int i = 0; i<str.length(); i++)
  {
    if (isLetter(str.substring(i,i+1))==true)
    {
      flip = str.substring(i,i+1) + flip;
    }
  }
  //System.out.println(flip);
  return flip;
}




//leftover trial code
  //for (int k = str.length(); k!=0; k--)
  //{
  //  if (isLetter(str.substring(k-1,k))==true)
  //    original = original + str.substring(k-1,k);
  //}
  
  //if (i!=str.length())
      //  original = original + str.substring(str.length()-i-1,str.length()-i);
        //original2 = original.substring(0,original.length()-1);
        
//if (str.substring(i,i+1)==a || str.substring(i,i+1)==b || str.substring(i,i+1)==c || str.substring(i,i+1)==a || 