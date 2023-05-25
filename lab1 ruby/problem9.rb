
def sequence_sum(begin_num, end_num, step)
    return 0 if begin_num > end_num
    (begin_num..end_num).step(step).sum
  end
      
  sequence_sum(2,6,2)