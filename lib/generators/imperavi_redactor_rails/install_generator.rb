module ImperaviRedactorRails
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)

      def copy_migrations
        migration_template "imperavi_redactor_rails_migration.rb", "db/migrate/imperavi_redactor_rails_migration.rb"
      end

      def self.next_migration_number(dir)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end
    end
  end
end