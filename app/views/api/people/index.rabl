collection :@people
attributes :id, :full_name, :sex, :dni, :birthplace, :birthday
node(:role) { |u| u.role.name }
node(:politic_party) { |u| u.politic_party.name }