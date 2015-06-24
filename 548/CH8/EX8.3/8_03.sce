pathname=get_absolute_file_path('8_03.sce')
filename=pathname+filesep()+'8_03data.sci'
exec(filename)
h=-log(D/Do)/Z;disp(h,"h=","h=-ln(D/Do)/Z","altitude of maximum decelation h:")
Amax=Ve^2*Z*sin(theta)/(2*%e);disp(Amax,"Amax=","Amax=V^2*Z*sin(theta)/(2*%e)","value of maximum deceleration Amax")
V=Ve*%e^(-Do/(2*B*Z*sin(theta)));disp(V,"V=","V=Ve*%e^(-Do/(2*B*Z*sin(theta)))","velocity at impact on earth surface")
printf("\Answer:\n")
printf("\n\altitude at which maximum deceleration occur: %f m\n\n",h)
printf("\n\value of maximum deceleration: %f m/s^2\n\n",Amax)
printf("\n\velocity at impact on earth surface: %f m/s\n\n",V)





