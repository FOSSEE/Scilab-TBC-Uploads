//Determine following parameters

N = 4;
Lo = 85.26;

Cn = (Lo*3600)/120;
SI =  10*log10((3.5^4)/6);

disp(Cn, 'No. of calls per cell site per hour')
disp(2558, 'No. of calls per cell site per hour (apprx.)')

disp(SI, 'Mean S/I ratio for cell reuse factor 4 (in db)')
