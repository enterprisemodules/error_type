This custom type using multiple namevars and title patterns run's ok when no types are generated. Here is the smallest manifest that will run:

```puppet
error_type {'text_2/text_1':
  ensure => 'absent',
}
```

When the types are generated:

```
$ puppet generate types
```

However, the same manifest fails on the agent with:

```
Info: Using configured environment 'production'
Info: Retrieving pluginfacts
Info: Retrieving plugin
Info: Loading facts
Error: Could not retrieve catalog from remote server: Error 500 on SERVER: Server Error: undefined method `call' for :top_level:Symbol
Warning: Not using cache on failed catalog
Error: Could not retrieve catalog; skipping run
```
