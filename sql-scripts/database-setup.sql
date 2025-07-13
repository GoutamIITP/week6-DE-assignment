-- Create watermark table
CREATE TABLE watermarktable (
    TableName varchar(255),
    LastModifiedDate datetime
);

-- Insert initial watermark
INSERT INTO watermarktable VALUES ('data_source_table', '1900-01-01');

-- Create main data table
CREATE TABLE data_source_table (
    ID int,
    Name varchar(255),
    ProcessedDate datetime
);

-- Create error log table
CREATE TABLE error_log (
    PipelineName varchar(255),
    RunId varchar(255),
    ErrorMessage varchar(max),
    LogDate datetime DEFAULT GETDATE()
);