project('Lox', ['vala', 'c'])

sources = files(
  'lox.vala', 'scanner.vala'
)

dependencies = [
  dependency('gee-0.8'),
  dependency('glib-2.0'),
  dependency('gio-2.0'),
  dependency('gobject-2.0')
]

executable('lox', sources: sources, dependencies: dependencies)

