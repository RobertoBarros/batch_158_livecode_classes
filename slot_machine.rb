class SlotMachine

  def score(reels)

    # 3 reels equals
    if reels[0] == reels[1] && reels[2] == reels[0]
      result = {joker: 50, star: 40, bell: 30, seven: 20, cherry: 10}
      return result[reels[0]]

    # 3 reals not equals
    elsif reels[0] != reels[1] && reels[2] != reels[0] && reels[2] != reels[1]
      return 0

    # 2 reals equals 1 different
    else

      case reels.count(:joker)
      when 2 # 2 equals joker
        return 25
      when 1 # only 1 joker
        key = reels.reject{|e| e == :joker }[0]
        result = {star: 20, bell: 15, seven: 10, cherry: 5}
        return result[key]
      when 0
        return 0
      end
    end
  end
end