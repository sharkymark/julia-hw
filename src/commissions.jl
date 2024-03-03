# Julia program to calculate sales commissions 
# the following obtained from console/user input 
# quota (quarterly)
# variable comp (quarterly)
# deal amount
# 

import Pkg; Pkg.add("Format")

using Printf
using Format

# Loop indefinitely until the user decides to stop
while true


    variable_comp = attainment = commission = deal_amount = bcr = 0.0

  
    # Prompt to enter values
    println("Enter QUARTERLY QUOTA e.g., 250000 or type 'stop' to exit:") 
    quota = readline() 

    # Check if the user wants to stop the loop
    if quota == "stop"
        println("Exiting the program.")
        break  # Exit the loop
    else
        quota = parse(Float64, quota) 
    end

    println("Enter QUARTERLY VARIABLE COMP e.g., 35000") 
    variable_comp = readline() 
    variable_comp = parse(Float64, variable_comp) 

    println("Enter DEAL AMOUNT e.g., 100000") 
    deal_amount = readline() 
    deal_amount = parse(Float64, deal_amount) 

    println("Enter formatting type e.g., @sprintf, Format, @printf") 
    format_type = readline() 

    print("\n\n") 

    # Calculations
    bcr = variable_comp/quota*100
    commission = bcr*deal_amount
    attainment = deal_amount/quota*100

    if format_type == "@sprintf"
        # Output using println and @sprintf
        println("The BCR is: ", @sprintf("%.2f%%", bcr))
        println("The DEAL AMOUNT is: \$", @sprintf("%.2f", deal_amount))
        println("The COMMISSION is: \$", @sprintf("%.2f", commission))
        println("The QUOTA ATTAINMENT is: ", @sprintf("%.2f%%", attainment))
    elseif format_type == "Format"
        # Output using Format package for formatting
        println("The BCR is: ", format("{1:.2f}%", bcr))
        println("The DEAL AMOUNT is: ", format("\${1:.2f}", deal_amount))
        println("The COMMISSION is: ", format("\${1:.2f}", commission))
        println("The QUOTA ATTAINMENT is: ", format("{1:.2f}%", attainment))
    elseif format_type == "@printf"
        @printf("The BCR is : %.2f%%\n", bcr)
        @printf("The DEAL AMOUNT is: \$%.2f\n",deal_amount)
        @printf("The COMMISSION is: \$%.2f\n",commission)
        @printf("The QUOTA ATTAINMENT is : %.2f%%\n", attainment) 
    end

    print("\n\n")

end