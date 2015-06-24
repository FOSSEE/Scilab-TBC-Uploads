clc;
//Example 27.2
//page no 413
printf("Example 27.2 page no 413\n\n");
//plate and frame filter press is to be employed to filter a slurry 
m_dot_slurry=600*60//mass flow rate ,lb/h
m=0.1//sluury contain 10% by mass solid
m_dot_solids = m*m_dot_slurry//the solid flow rate in the slurry
a=(1/5)//filter colth area required for 1 lb/h of solid
A=m_dot_solids*(a)//filter colth area for 3600 lb/h of solids
printf("\n filter colth area A=%f ft^2",A);
