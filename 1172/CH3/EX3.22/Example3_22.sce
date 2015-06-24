clc
//Given that
h = 6.6e-34 // plank's constant
m_e = 9.1e-31 // mass of electron in kg
L = 1e-10 // length of box of particle in m
//Sample Problem 22 page No. 146
printf("\n # Problem 22 # \n")
printf("\n Standard formula Used \n E= h^2 * (n_x^2+n_y^2+n_z^2) / (8*m*L^2)")
sum = 0 
n_y = 1
    for n_x = 1:3
        
            for n_z = 1:2
                sum = n_x+n_y+n_z
                if sum<6 then
                     E = h^2 * (n_x^2+n_y^2+n_z^2)/ (1.6e-19*8*m_e*L^2) // calculation of energy
                printf("\n \n E%d%d%d is  %f eV. ",n_x,n_y,n_z,E)
                end
               
                
            
        end
    end

