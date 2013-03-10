# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#"lives" ("arch", "area", "distro", "desktop", "filesystem", "repoextra", "di", "nombreiso",) VALUES ('MyString', 'MyString', 'MyString', 'MyString', 'MyString', 'MyString', 'f', 'MyString',)

Live.delete_all

live_aux = Live.create([{arch: 'i386'}, {area: 'main'}, {distro: 'wheezy'}, {desktop: 'lxde'}, {filesystem: 'squashfs'}, {repoextra: 'ftp.nl.debian.org'}, {di: 'f'}, {nombreiso: 'lihuen'}])

