# Rails.root.join('lib', 'modules', 'helper')
require Rails.root.join('lib', 'modules', 'helper')

include Helper

desc 'Print out the db contents'
task printdb: :environment do
  result = printdb


 puts result.to_yaml
end
