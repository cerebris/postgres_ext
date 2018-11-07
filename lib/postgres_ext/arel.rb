ar_major = Gem.loaded_specs["activerecord"].version.segments[0]
ar_minor = Gem.loaded_specs["activerecord"].version.segments[1]

require 'postgres_ext/arel/nodes'

case ar_major
when 5
  require 'postgres_ext/arel/5.0/predications'
  require 'postgres_ext/arel/5.0/visitors'
when 4
  case ar_minor
  when 2
    require 'postgres_ext/arel/4.2/predications'
    require 'postgres_ext/arel/4.2/visitors'
  else
    require 'postgres_ext/arel/4.1/predications'
    require 'postgres_ext/arel/4.1/visitors'
  end
end