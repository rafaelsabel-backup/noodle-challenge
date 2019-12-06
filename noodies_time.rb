def calculate
  noodles_time = ARGV[0].to_i
  hour_glass_1 = ARGV[1].to_i
  hour_glass_2 = ARGV[2].to_i

  total_time = 0
  aux_hour_glass_1 = hour_glass_1
  aux_hour_glass_2 = hour_glass_2

  difference = nil
  possible = false

  while difference != 0
    if aux_hour_glass_1 > aux_hour_glass_2
      difference = aux_hour_glass_1 - aux_hour_glass_2
      total_time += aux_hour_glass_2
      aux_hour_glass_1 = difference
      aux_hour_glass_2 = hour_glass_2
    else
      difference = aux_hour_glass_2 - aux_hour_glass_1
      total_time += aux_hour_glass_1
      aux_hour_glass_2 = difference
      aux_hour_glass_1 = hour_glass_1
    end

    if difference == noodles_time
      total_time += noodles_time
      possible = true
      break
    end
  end

  if possible
    puts "Tempo necessário para preparo #{total_time}"
  else
    puts 'Não é possível cozinhar no tempo exato'
  end
end

calculate
