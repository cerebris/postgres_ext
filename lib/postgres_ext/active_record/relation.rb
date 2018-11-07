ar_major = Gem.loaded_specs["activerecord"].version.segments[0]
ar_minor = Gem.loaded_specs["activerecord"].version.segments[1]

require 'postgres_ext/active_record/relation/merger'

case ar_major
when 5
  case ar_minor
  when 0
    require 'postgres_ext/active_record/5.0/relation/predicate_builder/array_handler'
    require 'postgres_ext/active_record/5.0/relation/query_methods'
  else
    require 'postgres_ext/active_record/5.1/relation/predicate_builder/array_handler'
    require 'postgres_ext/active_record/5.1/relation/query_methods'
  end
when 4
  require 'postgres_ext/active_record/4.x/query_methods'
  case ar_minor
  when 2
    require 'postgres_ext/active_record/4.2/relation/predicate_builder/array_handler'
  else
    require 'postgres_ext/active_record/4.x/relation/predicate_builder'
  end
end
