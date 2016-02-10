collection :@people
attributes :id, :full_name, :sex, :dni, :birthplace, :birthday, :image
node(:role) { |u| u.role.name }
node(:politic_party) { |u| u.politic_party.name }
child(:academics) { attributes :university, :career , :period, :completed}
child(:postgraduates) { attributes :course, :study_center, :grade, :period, :completed}
child(:work_experiences) { attributes :work_place, :period, :area}