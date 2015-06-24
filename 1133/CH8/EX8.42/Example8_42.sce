//Example 8.42
clc
disp("The fig.8.99 shows the circuit diagram for a 4-bit, 4-state ring counter with a single circulating 1. Here, 74X194 universal shift register is connected so that it normally preforms a left-shift. However, when RESET is asserted it loads 0001. Once RESET is negated, the 74194 shifts left on each clock pulse. The D_SL serial input is connected to the leftmost output (Q3 : MSB), so the next states are 0010, 0100, 1000, 0001, 0010, ..... Thus the counter counter visits four unique states before repeating.")
