clc
cs = 15 // side cutting edge angle in degree
v = 0.2 // cutting speed in m/s
f = 0.5 // feed rate in mm/rev.
d = 3.2 // depth of cut in mm
fc = 1593*(f)^0.85*(d)^0.98 // cutting force in N
pc = fc*v/1000 // cutting power in kw
ita_mt = 0.85 // efficiency of lathe
pm = pc/ita_mt // motor power in kw
a = f*d // area of uncut chio in mm^2
r = fc/a // specific cutting resistance in N/mm^2
p = pc/(a*v)// unit power in W/(mm^3)*s
printf("\n Cutting power = %0.3f kw\n Motor power = %0.2f kw\n Specific cutting resistance = %0.2f N/mm^2\n Unit power = %0.3f W/(mm^3)*s" , pc,pm,r,p)
// 'Answers vary due to round off error'
