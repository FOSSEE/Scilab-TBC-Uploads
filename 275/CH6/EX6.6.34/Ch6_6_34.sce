clc
disp("Example 6.34")
printf("\n")
disp("Calculate output voltage")
printf("Given")
disp("R1=2K,Rf=200K,V+=12V,V-=-12,Vi=1.5V")
Rf=20^4
R1=2*10^3
Vplus=12
Vminus=-12
Af=1+(Rf/R1)
Vi=1.5
Vo=Af*Vi
//condition to check output votage is greater than Vplus
if(Vo>Vplus) then
  printf("The Maximum positive output voltage=%f volt",Vplus)
//condition to check output voltage is less than Vminus
elseif(Vo<Vminus)
  printf("The maximum negative output voltage=%f volt",Vminus)
 //else display Vo
else
  printf("The output voltage=%f volt",Vo)
end
