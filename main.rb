def ceaser_cipher(string, shift)
  tmp =  string.bytes.map do |val|
    if val.between?("a".ord, "z".ord)
      shift.times do
        val+=1
        if val > "z".ord
          val = "a".ord;
        end
      end
    elsif val.between?("A".ord, "Z".ord)
      shift.times do
        val+=1
        if val > "Z".ord
          val = "A".ord;
        end
      end
    end
    val.chr
  end
  tmp.join("");
end

p ceaser_cipher('What a string!', 5);
