# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application'
pin '@hotwired/stimulus', to: '@hotwired--stimulus.js' # @3.2.2
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js'
pin 'stimulus-dropdown' # @2.1.0
pin 'hotkeys-js' # @3.13.7
pin 'jquery', to: 'https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.js'
pin 'popper', to: 'popper.js', preload: true
pin 'bootstrap', to: 'bootstrap.min.js', preload: true
pin 'stimulus-use' # @0.51.3

pin_all_from 'app/javascript/controllers', under: 'controllers'
