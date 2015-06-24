//Section-12,Example-4,Page no.-SS.40
//To calculate number of atoms per mm^2 surface area.
clc;
N_100=1+(4*(1/4))
a=4.049*10^-7
A1=a^2
N100_pmm=N_100/A1
disp(N100_pmm,'No. of atoms/mm^2 in(100) plane')
N_110=(1/2*2)+(4*1/4)
A2=(sqrt(2))*a^2
N110_pmm=N_110/A2
disp(N110_pmm,'No. of atoms/mm^2 in(110) plane')
N_111=(3*(1/2))+ (3*(1/6))
A3=(sqrt(3)*a^2)/2
N111_pmm=N_111/A3
disp(N111_pmm,'No. of atoms/mm^2 in(111) plane')
