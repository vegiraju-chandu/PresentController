import React from 'react';
import {
    View,
    Text,
    Button,
    NativeModules
} from 'react-native';

import {
    increment,
    decrement,
} from './HomeAction';

import { connect } from 'react-redux';

const Bridger = NativeModules.ReactBridger;

const Home = (props) => {

    return(
        <View style = {{flex:1,justifyContent:'center',alignContent:'center',alignItems:'center'}}>
            <Text> Counter is </Text>
             <Text> {props.counter.value}</Text>
             <Button title = 'open Sample App' onPress = {()=> Bridger.openSampleMethod()}/>
             <Button title = 'Present controller' onPress = {()=> Bridger.presentController()}/>
             <Button title = '-' onPress = {()=> props.decrement()} />
        </View>
    )
}

const mapStateToProps = (state) => ({
    counter: state.counterReducer,
});

const mapDispatchProps = (dispatch) => ({
    increment:() => dispatch(increment()),
    decrement:() => dispatch(decrement())
});

export default connect(mapStateToProps,mapDispatchProps)(Home);