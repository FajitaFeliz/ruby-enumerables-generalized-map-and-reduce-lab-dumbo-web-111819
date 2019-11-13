# Your Code Here

# def map(input, &block)
#   result = []
#   input.each { |n| result << block.call(n) }
#   result
# end

def map(input)
  output = []
  i = 0
  while i < input.length
    output.push(yield(input[i]))
    i += 1
  end
  output
end


def reduce(input, init = nil)
  if init
    output = init
    i = 0
  else
    output = input[0]
    i = 1
  end
  while i < input.length
    output = yield(output, input[i])
    i += 1
  end
  output
end

