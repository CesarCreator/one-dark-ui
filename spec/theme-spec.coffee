describe "One Dark UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('one-dark-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe '12px'

    atom.config.set('one-dark-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

  it "allows the tab sizing to be set via config", ->
    atom.config.set('one-dark-ui.tabSizing', 'Maximum')
    expect(document.documentElement.getAttribute('theme-one-dark-ui-tabsizing')).toBe 'maximum'

  it "allows the tab sizing to be set via config", ->
    atom.config.set('one-dark-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-one-dark-ui-tabsizing')).toBe 'minimum'

  it "allows the dock toggle buttons to be hidden via config", ->
    atom.config.set('one-dark-ui.hideDockButtons', true)
    expect(document.documentElement.getAttribute('theme-one-dark-ui-dock-buttons')).toBe 'hidden'

  it "allows the tree-view headers to be sticky via config", ->
    atom.config.set('one-dark-ui.stickyHeaders', true)
    expect(document.documentElement.getAttribute('theme-one-dark-ui-sticky-headers')).toBe 'sticky'

  it "allows the tree-view headers to not be sticky via config", ->
    atom.config.set('one-dark-ui.stickyHeaders', false)
    expect(document.documentElement.getAttribute('theme-one-dark-ui-sticky-headers')).toBe null
