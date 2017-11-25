Deploy.create!(feature: 'Generate monthly report and send it by e-mail',
              version: '0.0.1',
              status: true,
              responsible: 'Asandark-la')

Deploy.create(feature: 'Calculate something cool for the analytics team',
              version: '0.0.2',
              status: true,
              responsible: 'Dorowhil Green-rumble')

Deploy.create(feature: 'Added column X in table Y to do Z',
              version: '0.0.3',
              status: false,
              responsible: 'Dorowhil Green-rumble')
