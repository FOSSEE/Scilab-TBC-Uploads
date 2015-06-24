// To determine the rated normal current , breaking current , making current and short time rating (current)
clear 
clc;
In=1500;
mprintf("rated normal current=%.0f amps\n",In);
Ib=2000/(sqrt(3)*33);
mprintf("breaking current=%.2f KA\n",Ib);
Im=2.55*Ib;
mprintf("making current =%.2f kA\n",Im);
Is=Ib;
mprintf("short time rating  for 3 sec=%.2f kA\n",Is);
