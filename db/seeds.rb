# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Tool.count == 0
  Tool.create({
    title: 'Git',
    subtitle: '--distributed-even-if-your-workflow-isnt',
    description: 'Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. Git is easy to learn and has a tiny footprint with lightning fast performance. It outclasses SCM tools like Subversion, CVS, Perforce, and ClearCase with features like cheap local branching, convenient staging areas, and multiple workflows.',
    link: 'https://git-scm.com',
  })
  Tool.create({
    title: 'Tower',
    subtitle: 'Version control with Git - made easy.',
    description: 'The best Git client just got even better.',
    link: 'http://www.git-tower.com',
  })
end
