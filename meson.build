project('Lox', ['vala', 'c'])

sources = files(
  'lox.vala'
)

dependencies = [
  dependency('glib-2.0'),
  dependency('gobject-2.0')
]

executable('lox', sources: sources, dependencies: dependencies)

