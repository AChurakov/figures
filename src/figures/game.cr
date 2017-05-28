module Game
  def check_figure(figure_one : Int32, figure_two : Int32)
    figure_one_array = figure_one.to_s.split("")
    figure_two_array = figure_two.to_s.split("")
    place = 0
    right = 0
    figure_one_array.each_with_index do |fig_one, index|
      place += 1 if figure_two_array[index] == fig_one
      figure_two_array.each do |fig_two|
        right += 1 if fig_two == fig_one
      end
    end
    { "place" => place, "right" => right}
  end

  def check_lentgh_figure(figure : Int32)
    figure.to_s.size == 5
  end
end
