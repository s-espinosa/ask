# Ask

Ask is a small Rails application designed to be used with [Shyness](https://github.com/s-espinosa/shyness) to accept questions from students without them needing to raise their hands. It has been designed for use at the [Turing School of Software & Design](http://turing.io/).

Inspiration for the names Ask and [Shyness](https://github.com/s-espinosa/shyness) are courteousy of [Moz](https://www.youtube.com/watch?v=zoo9Vu1a9bU)

## Installation

Clone this repository. Then run the following commands in your terminal.

```
$ cd ask
$ bundle
$ rails s
```

This will allow you to run this application locally.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/s-espinosa/shyness. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

Currently, questions in this application do not have any identifier for a student cohort. All questions are shown on a single page.

Ideally, questions would be stored with a cohort, which would then allow instructors across modules to use this tool by viewing questions related specifically to their current cohort. This would require both an update to [Shyness](https://github.com/s-espinosa/shyness) (to allow students to set their cohort), and to Ask (to accept the module with the question and save it as part of the response).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Shyness project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/shyness/blob/master/CODE_OF_CONDUCT.md).
