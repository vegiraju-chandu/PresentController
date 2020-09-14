
export function increment() {
    console.log('Increment action');
    return{
        type:'INCREMENT'
    }
}

export function decrement() {
    console.log('Decrement action');
    return{
        type: 'DECREMENT'
    }
}