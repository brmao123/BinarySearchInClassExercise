public static int binarySearch(int [] naNums, int nTarget) {           
int high = naNums.length-1;
int low = 0;
while(high>= low){
int guess = (low+high)/2;
if(naNums[guess] == nTarget)
return guess;
else if (naNums[guess] < nTarget)
low = guess+1;
else high = guess-1;
}
  return -1;
}      
public static int binarySearch(int [] naNums, int nTarget, int low, int high) {  
  
  /* Your recursive code here */
    int guess = (low+high)/2;
  if(low>high)
  return -1;
  if(naNums[guess] < nTarget)
  return binarySearch(naNums, nTarget, low+1, high );
  else if (naNums[guess]> nTarget)
  return binarySearch(naNums, nTarget, low, high-1 );
  else 
  return guess;
  //return -1;
}  
