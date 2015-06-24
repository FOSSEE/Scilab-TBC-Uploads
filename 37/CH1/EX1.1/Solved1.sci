//Solved Example 1
//:To  calcualte Average And Deviation
function[avg]=average(a)
  i=1;
  [j,k]=size(a);
  j=0;
  for i=1:k
    j=j+a(i);
  end
  avg=j/k;
  dev=0;
  disp(avg,"Average =");
  disp("The deviations are:");
  for i=1:k
    dev=a(i)-avg;
    disp(dev);
  end
endfunction
//Calling routine
a=[3 223 212 343]
avg=average(a)