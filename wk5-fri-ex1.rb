ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

def vote_counter(arr)
    results = {}
    arr.each do |ballot|
        ballot.each do |rank, candidate|
            if !results.include?(candidate)
                results[candidate] = 0
            end
            results[candidate] += (4 - rank)
        end
    end
    winner_name = results.sort_by {|key, value| value}.reverse.first[0]
    winner_points = results.sort_by {|key, value| value}.reverse.first[1]

    return "The winner is #{winner_name} with #{winner_points} points!"

end


puts vote_counter(ballots)



