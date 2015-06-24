//Section-9,Example-5,Page no.-E.14
//To determine the number of coulombs delivered by a  Daniel cell.
clc;
E_cell=1.00
E0_cell=1.10
n=2
L=10^((E_cell-E0_cell)/(-0.0592/n))
//L=log(Zn_2+/Cu_2+)   and     (Zn_2+/Cu_2+)=2399
Cu_2=2/L
disp(193000,'coulomb of electrons delivered')
//Since all the copper has been consumed,thus 2 mol of electrons has been delivered. 
