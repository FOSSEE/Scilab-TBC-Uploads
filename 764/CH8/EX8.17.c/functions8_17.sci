
//Function generating the values of Ka, Kb, Kc and Kf
function [Ka, Kb, Kc, Kf] = fluctuate(s, d, r, w)
    //Calculate Ka
    //Nomenclature: 
    //1 - Ground
    //2 - Machined or cold drawn
    //3 - Hot-rolled
    //4 - Forged
surface = [1 2 3 4]
Ksurfa = [1.58 4.51 57.7 272] 
Ksurfb = [-0.085 -0.265 -0.718 -0.995]
for j = 1:1:4
    if (s == surface(j))
        a = Ksurfa(j)
        b = Ksurfb(j)
        break
    end
end
//From equation 5.18 on page 157
Ka = a * (Sut^b)
if (Ka > 1) then
    Ka = 1
end

    //Calculate Kb
    //d (mm)
    if (d <= 7.5) then
        Kb = 1
    elseif ((d > 7.5) & (d <= 50))
        Kb = 0.85
    elseif (d > 50)
        Kb = 0.75
    else
        printf('Error in Kb')
    end
    
    //Calculate Kc
    // r (%)
rel = [50 90 95 99 99.9 99.99 99.999]
Krel = [1 0.897 0.868 0.814 0.753 0.702 0.659]
for i = 1:1:7
    if (r == rel(i)) then
        Kc = Krel(i)
        break
    end
end

//Calculate Kf
//Type of weld
//1 - Reinforced butt-weld
//2 - Toe of transverse fillet-weld
//3 - End of parallel fillet weld
//4 - T-butt joint with sharp corners
fatigue = [1 2 3 4]
value = [1.2, 1.5, 2.7, 2.0]
for j = 1:1:4
    if (w == fatigue(j)) then
        Kf = value(j)
    end
end
endfunction
