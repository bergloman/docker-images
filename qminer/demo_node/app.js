var qm = require('/var/qminer/qminer');

// create the base object with the desired schema
var base = new qm.Base({
    mode: 'createClean',
    schema: [{
        name: 'tweets',
        fields: [{ name: 'text', type: 'string' }]
    }]
});

// push the data
let tweetStore = base.store('tweets');
tweetStore.push({ text: "This pen is green." });
tweetStore.push({ text: "This pen is yellow." });
tweetStore.push({ text: "This pen is blue." });
tweetStore.push({ text: "This marker is yellow." });

// get the distribution of keywords
let distribution = tweetStore.allRecords.aggr(
    { name: "test", type: "keywords", field: "text" });

// output the sorted keyword-weight pairs
distribution.keywords.forEach((obj) => {
    console.log(obj.keyword, obj.weight);
});