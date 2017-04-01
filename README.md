# fsm

A finite state machine library

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  fsm:
    github: N0r1x/fsm
```

## Usage

```crystal
require "fsm"
Include Fsm
```
Include the module Fsm to be able to access it's class FiniteStateMachine.
You need to input the branches of the states in a tuple of form
id : String | input : T| id_of_next_state_if_input| output :O
The program will crash if input is submitted that the current state can't handle.


## Development

Add a Moore machine class as well. Check input.

## Contributing

1. Fork it ( https://github.com/N0r1x/fsm/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [N0r1x](https://github.com/N0r1x) N0r1x - creator, maintainer
