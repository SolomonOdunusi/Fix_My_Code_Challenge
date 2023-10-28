###
# Sort integer arguments (ascending)
#

###

result = []

# Iterate over each argument passed to the script
ARGV.each do |arg|
    # Skip if the argument is not an integer
    next if arg !~ /^-?[0-9]+$/

    # Convert the argument to an integer
    i_arg = arg.to_i

    # Insert the integer argument at the correct position in the sorted array
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] < i_arg
            i += 1
        else
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
    end

    # If the integer argument was not inserted, append it to the end of the array
    result << i_arg if !is_inserted
end

# Print the sorted array
puts result
