import {
  AppBar,
  Box,
  ExpansionPanel,
  ExpansionPanelSummary,
  Paper,
  Tab,
  Tabs,
  Typography,
} from "@material-ui/core";
import Container from "@material-ui/core/Container";
import { makeStyles } from "@material-ui/core/styles";
import ExpandMoreIcon from "@material-ui/icons/ExpandMore";
import React from "react";
import "./App.css";

const useStyles = makeStyles((theme) => ({
  statisticsPadding: {
    display: "flex",
    //flexWrap: "wrap",

    position: "relative",
    "& > *": {
      margin: theme.spacing(1),
      width: theme.spacing(50),
      height: theme.spacing(30),
    },
  },
  paddingText: {
    textAlign: "center",
    top: "10%",
    fontSize: "55px",
  },
  paddingNumber: {
    margin: "auto",
    textAlign: "center",
    top: "50%",
    fontSize: "65px",
  },
  expansionContainer: {
    padding: theme.spacing(4),
  },
  expansionContent: {
    padding: theme.spacing(0, 4, 2, 4),
  },
  gymNumber: {
    position: "relative",
    left: "10%",
    top: "10%",
    fontSize: "100px",
  },
  // styles: { height: 5, width: 123, margin: 20, position: "absolute" },
}));

function TabPanel(props) {
  const { children, value, index, ...other } = props;

  return (
    <div
      role="tabpanel"
      hidden={value !== index}
      id={`simple-tabpanel-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
    >
      {value === index && (
        <Box p={3}>
          <Typography>{children}</Typography>
        </Box>
      )}
    </div>
  );
}

const page = (props) => {
  const [value, setValue] = React.useState(0);
  const classes = useStyles();
  const handleChange = (event, newValue) => {
    setValue(newValue);
  };
  return (
    <Container maxWidth={false}>
      <AppBar position="static">
        <Tabs
          value={value}
          onChange={handleChange}
          aria-label="simple tabs example"
        >
          <Tab label="Information" />
          <Tab label="Facilities" />
          {/* <Tab label="About COVID-19" /> */}
        </Tabs>
      </AppBar>
      <TabPanel value={value} index={0}>
        <Typography variant="h2">Statistics</Typography>
        <Container
          className={classes.statisticsPadding}
          style={{ justifyContent: "space-between" }}
        >
          <Paper elevation={3}>
            <Typography className={classes.paddingText}>Infected</Typography>
            <Typography className={classes.paddingNumber}>10</Typography>
          </Paper>

          <Paper elevation={3}>
            <Typography className={classes.paddingText}>Death</Typography>
            <Typography className={classes.paddingNumber}>100</Typography>
          </Paper>
        </Container>
        <Typography variant="h2">Scientific Fact</Typography>
        <Container className={classes.expansionContainer} maxWidth="xl">
          <ExpansionPanel>
            <ExpansionPanelSummary
              expandIcon={<ExpandMoreIcon />}
              aria-controls="panel1a-content"
              id="panel1a-header"
            >
              <Typography>Symtoms of Covid-19</Typography>
            </ExpansionPanelSummary>
            <Typography className={classes.expansionContent}>
              some content
            </Typography>
          </ExpansionPanel>
          <ExpansionPanel>
            <ExpansionPanelSummary
              expandIcon={<ExpandMoreIcon />}
              aria-controls="panel1a-content"
              id="panel1a-header"
            >
              <Typography>How does the virus spread?</Typography>
            </ExpansionPanelSummary>
            <Typography className={classes.expansionContent}>
              some content
            </Typography>
          </ExpansionPanel>
          <ExpansionPanel>
            <ExpansionPanelSummary
              expandIcon={<ExpandMoreIcon />}
              aria-controls="panel1a-content"
              id="panel1a-header"
            >
              <Typography>How to stop the spread?</Typography>
            </ExpansionPanelSummary>
            <Typography className={classes.expansionContent}>
              some content
            </Typography>
          </ExpansionPanel>
        </Container>
        <Typography variant="h2">Resources avaible</Typography>
        <Container className={classes.expansionContainer} maxWidth="xl">
          <ExpansionPanel>
            <ExpansionPanelSummary
              expandIcon={<ExpandMoreIcon />}
              aria-controls="panel1a-content"
              id="panel1a-header"
            >
              <Typography>Where to get the test?</Typography>
            </ExpansionPanelSummary>
            <Typography className={classes.expansionContent}>
              some content
            </Typography>
          </ExpansionPanel>
          <ExpansionPanel>
            <ExpansionPanelSummary
              expandIcon={<ExpandMoreIcon />}
              aria-controls="panel1a-content"
              id="panel1a-header"
            >
              <Typography>Where to get mental health supoort</Typography>
            </ExpansionPanelSummary>
            <Typography className={classes.expansionContent}>
              some content
            </Typography>
          </ExpansionPanel>
        </Container>
      </TabPanel>
      <TabPanel value={value} index={1}>
        <Typography variant="h2">Gyms</Typography>
        <Container className={classes.expansionContainer} maxWidth="xl">
          <ExpansionPanel>
            <ExpansionPanelSummary
              expandIcon={<ExpandMoreIcon />}
              aria-controls="panel1a-content"
              id="panel1a-header"
            >
              <Typography>MCC Gym</Typography>
            </ExpansionPanelSummary>
            <Typography className={classes.gymNumber}>300</Typography>
            <Typography style={{ position: "relative", left: "13%" }}>
              People inside
            </Typography>
            <Typography>Open Hours: Mon - Fri: 10:00 - 2:00</Typography>
            <Typography>Max Capacity: xxx people</Typography>
          </ExpansionPanel>
          <ExpansionPanel>
            <ExpansionPanelSummary
              expandIcon={<ExpandMoreIcon />}
              aria-controls="panel1a-content"
              id="panel1a-header"
            >
              <Typography>War Mamorial Gym</Typography>
            </ExpansionPanelSummary>
            <Typography className={classes.gymNumber}>300</Typography>
            <Typography style={{ position: "relative", left: "13%" }}>
              People inside
            </Typography>
            <Typography>Open Hours: Mon - Fri: 10:00 - 2:00</Typography>
            <Typography>Max Capacity: xxx people</Typography>
          </ExpansionPanel>
        </Container>

        <Typography variant="h2">Dining Hall</Typography>
        <Container className={classes.expansionContainer} maxWidth="xl">
          <ExpansionPanel>
            <ExpansionPanelSummary
              expandIcon={<ExpandMoreIcon />}
              aria-controls="panel1a-content"
              id="panel1a-header"
            >
              <Typography>Tuner Hall</Typography>
            </ExpansionPanelSummary>
            <Typography className={classes.gymNumber}>300</Typography>
            <Typography style={{ position: "relative", left: "13%" }}>
              People inside
            </Typography>
            <Typography>Open Hours: Mon - Fri: 10:00 - 2:00</Typography>
            <Typography>Max Capacity: xxx people</Typography>
          </ExpansionPanel>
          <ExpansionPanel>
            <ExpansionPanelSummary
              expandIcon={<ExpandMoreIcon />}
              aria-controls="panel1a-content"
              id="panel1a-header"
            >
              <Typography>War Mamorial Gym</Typography>
            </ExpansionPanelSummary>
          </ExpansionPanel>
        </Container>
      </TabPanel>
    </Container>
  );
};

export default page;
