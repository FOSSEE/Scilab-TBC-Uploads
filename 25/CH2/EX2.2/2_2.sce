// example:-2.2.page no.-26.
// progarm to find out skin depth of aluminium,copper,gold and silver at frequency 10GHZ.
f=10*10^9;
muo=4*%pi*10^-7;  // permeability in free space.
omega=2*%pi*f;
sigma_aluminium=3.816*10^7;
sigma_copper=5.813*10^7;
sigma_gold=4.098*10^7;
sigma_silver=6.173*10^7;
delta1=sqrt(2/(omega*muo*sigma_aluminium));
delta2=sqrt(2/(omega*muo*sigma_copper));
delta3=sqrt(2/(omega*muo*sigma_gold));
delta4=sqrt(2/(omega*muo*sigma_silver));
//result
disp(delta1,'skin depth of aluminium in meter=')  // skin depth of aluminium.
disp(delta2,'skin depth of copper in meter=')  //skin depth of copper.
disp(delta3,'skin depth of gold in meter=')  //skin depth of gold.
disp(delta4,'skin depth of silver in meter=')  //skin depth of silver.