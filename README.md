# collatz-conjecture
Collatz conjeture in C and MatLab

The Collatz conjecture was stated by the mathematician Lothar Collatz in 1937, and to date it has not been solved. He affirms that regardless of the number we start with (belonging to the natural ones), it will always reach 1, and therefore a 4-2-1 cycle.

The function is given by:

      	| n/2       if n is even
    f(n) =  |                             where n is a natural number
            |3n+1       if n is odd

The most important data to consider when executing the function with a given number is the orbit time, which refers to the number of iterations until reaching unity; and the upper bound, which is the highest value obtained during the iterations.

Although the result has not been proven true or false, in May 2020 the conjecture was proven for all sequences of numbers less than 2^68.

I wanted to develope a small C file capable of receiving any number, doing the iterations and returning the orbit time and the maximum value reached. So, in order to graph the results and compare them with each other, I modified the code with MatLab so that it iterates all the numbers less than the one entered by the user, it graphs the orbit time and the maximum values reached; and finally it shows the largest of the maximum values and the largest orbit time obtained with their respective initial values.
