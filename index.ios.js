'use strict';

import React from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View
} from 'react-native';

class TestComponent extends React.Component {
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.title}>
          Hello world!
        </Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  title: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
});

// Module name
AppRegistry.registerComponent('TestComponent', () => TestComponent);
