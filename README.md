# cs_strict
This is a mod of minetest that provides a table for cs_strict in cs_mt

The cs_strict mod in cs_mt depends this to work, else cs_strict dont crashes, but dont protect the chat from bad people.
## API
- `strict`: Is the main table of the mod
- `strict.find_word(string)`: Find a bad word (cursed or swearing), returns true if it had
- `strict.random_word()`: Returns a random bad word
- `all`: Is a another table, containing all bad words
- `bw`: Is an another table, containing bad words (Not same as `all`)
