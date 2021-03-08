namespace: demo
flow:
  name: DemoFlow
  workflow:
    - local_ping:
        do:
          io.cloudslang.base.utils.local_ping:
            - target_host: cmp-new-master1.ftc.hpeswlab.net
            - packet_count: '2'
        navigate:
          - SUCCESS: TestPrint
          - FAILURE: FAILURE
    - TestPrint:
        do:
          demo.TestPrint: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      local_ping:
        x: 226
        'y': 94
        navigate:
          1dc8b176-0ae2-8893-c29e-daec09b9068c:
            targetId: 7536fbf0-d1c6-9137-e2a7-15bd47fc47aa
            port: FAILURE
      TestPrint:
        x: 471
        'y': 118
        navigate:
          9f7c8e99-1a65-f3d8-60f0-eb5569d265fa:
            targetId: ffa5e57d-3c93-2b55-8016-6f9ca798cb8e
            port: SUCCESS
    results:
      FAILURE:
        7536fbf0-d1c6-9137-e2a7-15bd47fc47aa:
          x: 71
          'y': 245
      SUCCESS:
        ffa5e57d-3c93-2b55-8016-6f9ca798cb8e:
          x: 659
          'y': 288
