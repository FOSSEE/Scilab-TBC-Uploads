clc;clear;
//Example 13.6
//13.6 (d) answer not matching as float datatype is giving more accurate answer in comparison to textbook that has given approximate due to rounding off to two decimal places

//given data
mfs=0.0348;
mfw=0.9652;
T0=288.15;

//constants used
Mw=18;
Ms=58.44;
Rw=0.4615;
pm=1028;
Ru=8.314;

//calculations
//part - a
Mm=1/((mfs/Ms)+(mfw/Mw));
yw=mfw*Mm/Mw;
ys=1-yw;
disp(yw,'the mole fraction of the water');
disp(ys,'the mole fraction of the saltwater');

//part - b
wmin=-Ru*T0*(ys*log(ys)+yw*log(yw));
wm=wmin/Mm;
disp(wm,'the minimum work input required to separate 1 kg of seawater completely into pure water and pure salts in kJ');

//part - c
wmin=Rw*T0*log(1/yw);
disp(wmin,'the minimum work input required to obtain 1 kg of fresh water from the sea in kJ');

//part - d
Pmin=pm*Rw*T0*log(1/yw);
disp(Pmin,'the minimum gauge pressure that the seawater must be raised if fresh water is to be obtained by reverse osmosis using semipermeable membranes in kPa')
