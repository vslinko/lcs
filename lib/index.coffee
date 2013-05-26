module.exports = (str1, str2) ->
  return false if !str1 or !str2

  sequence = ""
  length = 0
  offset = 0
  matrix = new Array str1.length

  for i in [0...str1.length]
    matrix[i] = new Array str2.length

    for j in [0...str2.length]
      matrix[i][j] = 0

  for i in [0...str1.length]
    for j in [0...str2.length]
      if str1[i] != str2[j]
        matrix[i][j] = 0
      else
        if i == 0 or j == 0
          matrix[i][j] = 1
        else
          matrix[i][j] = 1 + matrix[i-1][j-1]

        if matrix[i][j] > length
          currentOffset = i - matrix[i][j] + 1
          length = matrix[i][j]

          if offset == currentOffset
            sequence += str1[i]
          else
            sequence = str1.substr currentOffset, i + 1 - currentOffset
            offset = currentOffset

  sequence
