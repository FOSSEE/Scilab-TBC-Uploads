//Gh=k/((s+1)*(s+2+2j)*(s+2-2j))

for n=0:2
    theta=(2*n+1)*180/3           //poles=3 , zeroes=0
    disp(theta)
end

disp(cntrd=(-1-2-2-0)/3)           // real(poles-zeroes)/ number of poles-zeroes