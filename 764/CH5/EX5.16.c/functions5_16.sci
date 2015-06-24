
//Function generating the values of Ka, Kb and Kc
function [Ka, Kb, Kc] = fluctuate(s, d, r)
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
endfunction

//Function for plotting S-N Curve
function[a, b, c, z]= SNplot(Sut,Se)
    //Initialise e
    e = 4
    //Initialise all given values
    a = log10(0.9 * Sut)
    b = log10(Se)
    c = log10(Nmin)
    z = log10(Nmax)
    //Calculate the values of y-coordinate when x = 4 and 5 using linear interpolation
    for i = 1:1:4
        if(i == 1)
            s(i) = c
            l(i) = a
        elseif(i == 4)
            s(i) = z
            l(i) = b
        else
            s(i) = log10(10^e)
            l(i) = b + (((a - b)/(c - z))*(s(i) - z))
            e = e + 1
        end
    end
    //Plot S-N Curve
    y = {l(1), l(2), l(3), l(4)}
    x = {s(1), s(2), s(3), s(4)}
    plot(x,y,'-*')
    plot2d3(x,y)
    //Get the handle of current axes
    g = gca()
    //Give labels and set label properties
    g.labels_font_color=5
    g.font_size=3
    g.grid=[1,1]
    g.box="off"
    title('S-N Curve (Example 5.16)')
    xlabel('log10N')
    ylabel('log10Sf')
endfunction